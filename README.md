# BigWigs — 个人修改版（Turtle WoW 1.12）

> **非官方修改版。** 基于 **ElesionWoW/BigWigs**（toc 里 `X-Fork: Golden`，即 "Golden" fork），
> 其上游为 **pepopo978/BigWigs**（Turtle WoW 主线）与更早的 BigWigs 团队。
> 本仓库在其基础上继续修改，面向 **Turtle WoW / WoW 1.12（Interface 11200）**。
> 版权归原作者与全部贡献者所有；本仓库只做修改与分发，不主张任何新版权。

- 本仓库地址：<https://github.com/tian880212/BigWigs>
- 上游仓库：<https://github.com/ElesionWoW/BigWigs>

BOSS 技能预警插件：读战斗日志与光环事件，提前提示技能、喊话、换坦、距离与击杀计时。

---

## 安装

1. 解压后目录名必须是 **`BigWigs`**（与 `BigWigs.toc` 同级）
2. 整个目录放进 `Interface\AddOns\`
3. **需要公共库 `!Libs`**：Ace2、Babble-2.2、TabletLib、SurfaceLib、DewdropLib、CandyBar 等。
   本仓库**不含**这些库，配套打包好的版本见 [tian880212/Libs](https://github.com/tian880212/Libs)
   （解压后目录名必须带感叹号：`!Libs`）
4. 进游戏 `/bw` 打开设置

## 常用命令

| 命令 | 作用 |
| --- | --- |
| `/bw`、`/BigWigs` | 主设置面板 |
| `/bwcd`、`/worldbosscd` | 世界 BOSS 冷却面板（`/bwcd reset` 重置） |
| `/bwv` | 竖行条（VerticalBars）相关开关 |
| `/frbuff` | 冰抗 / 火抗 buff 检查 |

---

## 包含的区域模块

`Raids/` 下 14 个区域：`MC`、`BWL`、`AQ20`、`AQ40`、`Naxxramas`、`Onyxia`、`ZG`、`UBRS`、
`DireMaul`、`BlackMorass`、`EmeraldSanctum`、`Karazhan`、**`TMH`（木吼要塞 / Timbermaw Hold）**、`Other`；
另有 `Battlegrounds/`（奥特兰克山谷、阿拉希盆地）。

### TMH（木吼要塞）为本仓库新增

- `Raids/TMH/Trioch.lua` — **提里奥克**（Trioch the Devourer）
- `Raids/TMH/Rotgrowl.lua` — **腐嚎**（Rotgrowl，小怪「蠕动的异质」相关机制）

### ⚠️ 这两个 BOSS 的中文名来自 `!Libs`

BigWigs 的模块名走 **Babble-Boss-2.2** 翻译，而这两个 BOSS 的词条写在 `!Libs` 里、
**不在本仓库内**。只装本仓库、却用了一份没有这两个词条的 `!Libs` 时，
TMH 模块会显示英文名，甚至不满足启用条件（`enabletrigger` 用翻译后的名字精确匹配）。

**最简单：装配套的 [tian880212/Libs](https://github.com/tian880212/Libs)**，里面已经带好这两条。

如果你已经在用自己那份 `!Libs`、不想整套更换，就在

```
Interface\AddOns\!Libs\Babble\Babble-Boss-2.2\Babble-Boss-2.2.lua
```

的 **enUS 块与 zhCN 块各加一条**（必须成对：只加 zhCN 会报 `Improper translation exists`，
并中断整个 Babble，BigWigs 全线报错）：

```lua
-- enUS
["Trioch"]   = true,
["Rotgrowl"] = true,

-- zhCN
["Trioch"]   = "吞噬者提里奥克",
["Rotgrowl"] = "腐嚎",
```

---

## 与原版的主要差异

- **新增 TMH 区域**（提里奥克 / 腐嚎），含技能预告、换坦提示与击杀计时
- **中文本地化补齐**：预警文案、喊话触发按中文日志重写。喊话 trigger 一律取稳定核心子串，
  不抄整句（职业名差异「盗贼 / 潜行者」、错别字、称呼与标点都会让整句匹配失效）
- **自身 trigger 统一 `^` 锚定**，并把捕获到的「你 / you」归一为 `UnitName("player")`，
  避免硬编码英文名；自身与他人两条 pattern 用 `elseif` 隔断，防止把字面「你」广播给全团
- **WorldBossCooldown**：冷却按「掉落」计（已有记录不刷新时间），`/bwcd` 面板 + 重置
- **CommonAuras**：奴役 / 叛变监控条，开条必过网关判断，`UNIT_PET` 有开条就有停条路径
- **竖行条兼容**：与 **VerticalBars** 插件配合；直接调 `BigWigs_StartBar` 的特殊条
  （血量条 / 计数条）必须传 `force=true`，否则竖行条开启时会被静默吞掉
- 新增 BOSS 模块三件套流程固定：写模块 → 补 `BigWigs.toc` 加载行 → 补 Babble 词条（enUS + zhCN）。
  漏 toc 等于模块不存在；漏 enUS 会登录报红

## 本客户端（Turtle 1.12）注意

- **禁止探测 `boss1`~`boss4`**：本客户端对未知单位直接抛错，会炸断整条标记链路。
  取 BOSS 目标走 `target` → `targettarget` → `raid` / `party` 逐级回退
- 无 `C_Timer`，循环用 `ScheduleRepeatingEvent(id, func, delay, self)`
- Lua 5.0：无 `string.match` / `string.gmatch`，无 `#`（用 `table.getn`）
- `ModuleDeclaration("完整单位名", "区域")` 的单位名必须与服务器实际单位名完全一致（含标点剥离规则），
  写短了等于永不启用

---

## 说明

- 个人维护版本，不保证与上游同步；上游问题请反馈给 [ElesionWoW/BigWigs](https://github.com/ElesionWoW/BigWigs)
- 报错请带 `Interface\AddOns\BigWigs` 下的完整路径与行号
