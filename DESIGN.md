# POP MART 潮流 IP 官网宣传页 — 设计规范 (DESIGN.md)

> 最后更新: 2026-09-24
> 上游来源: `PRD/03-design-handoff.md`、`PRD/04-pages-components.md`、用户确认的 White Desert 主参考与 Ponpon Mania 辅助参考
> 交互档位: L3 沉浸体验
> 证据等级: 充分

---

## 1. 设计基调

- **氛围关键词**: 高级沉浸、潮流收藏、全球旅程、精致橱窗、轻章节感
- **一句话定调**: 像一支 POP MART 全球 IP 品牌短片，用户从首屏大片进入角色、收藏、App 和全球现场组成的旅程。
- **目标用户视角**: 这套设计在向课程评审、作品集面试官、潮玩爱好者说话，要让他们快速感到页面有品牌级审美、清晰叙事和可落地交互。
- **目标地区/语言**: 中国大陆展示场景，默认语言 `zh-CN`，V1 不做多语言切换。

### 设计取舍

- White Desert 是主参考: 借大首屏、电影感滚动、一屏一主题、旅程式叙事、地图路线感。
- Ponpon Mania 是辅助参考: 只借章节编号、世界观入口和轻量 chapter navigation，不借漫画站整体视觉。
- POP MART 内容必须始终可见: 角色、收藏、App 和全球现场不能被抽象动效盖过去。
- 页面要高级，但不能冷: 采用温暖浅底、深色文字、品牌红和少量糖果色，让 IP 保持心动感。

---

## 2. 色彩系统

```css
:root {
  /* 基础底色 */
  --color-bg: #F7F2EA;                 /* rgb: 247,242,234 */
  --color-bg-soft: #FFF9F1;            /* rgb: 255,249,241 */
  --color-bg-deep: #171717;            /* rgb: 23,23,23 */
  --color-surface: #FFFFFF;            /* rgb: 255,255,255 */
  --color-surface-warm: #F2E4D4;       /* rgb: 242,228,212 */
  --color-surface-glass: #FFFFFFCC;    /* rgb: 255,255,255,0.8 */

  /* 文本与边框 */
  --color-text: #181311;               /* rgb: 24,19,17 */
  --color-text-soft: #3D3632;          /* rgb: 61,54,50 */
  --color-text-muted: #756B64;         /* rgb: 117,107,100 */
  --color-text-inverse: #FFF9F1;       /* rgb: 255,249,241 */
  --color-border: #DED0C3;             /* rgb: 222,208,195 */
  --color-border-strong: #BFAEA0;      /* rgb: 191,174,160 */

  /* POP MART 强调与 IP 糖果色 */
  --color-accent: #E60012;             /* rgb: 230,0,18 */
  --color-accent-hover: #B90010;       /* rgb: 185,0,16 */
  --color-candy-pink: #FF7CA8;         /* rgb: 255,124,168 */
  --color-candy-blue: #6BD4FF;         /* rgb: 107,212,255 */
  --color-candy-yellow: #FFD84D;       /* rgb: 255,216,77 */
  --color-candy-mint: #61D6A6;         /* rgb: 97,214,166 */

  /* 语义色 */
  --color-success: #17A36B;            /* rgb: 23,163,107 */
  --color-warning: #E3A300;            /* rgb: 227,163,0 */
  --color-danger: #D92D20;             /* rgb: 217,45,32 */
  --color-info: #2672E8;               /* rgb: 38,114,232 */

  /* 覆盖层 */
  --color-overlay-soft: #18131133;     /* rgb: 24,19,17,0.2 */
  --color-overlay-strong: #18131199;   /* rgb: 24,19,17,0.6 */
}
```

### 使用规则

| Token | 使用场景 |
|------|---------|
| `--color-bg` | 页面默认底色，保证 White Desert 式留白但更温暖 |
| `--color-bg-deep` | Hero 局部暗场、地图路线、章节转场 |
| `--color-accent` | 主 CTA、当前章节、高亮路线节点 |
| `--color-candy-pink` | IP 标签、情绪点缀、收藏状态 |
| `--color-candy-blue` | App Route、线上探索节点 |
| `--color-candy-yellow` | 发售提醒、隐藏款提示 |
| `--color-candy-mint` | 门店、全球现场、成功状态 |

---

## 3. 字体系统

### 字体引入

```css
@import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Noto+Sans+SC:wght@400;500;700;900&display=swap');
```

### 字族

```css
:root {
  --font-display: "Space Grotesk", "Noto Sans SC", system-ui, sans-serif;
  --font-body: "Noto Sans SC", system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  --font-mono: "SFMono-Regular", "Cascadia Code", "Menlo", monospace;
}
```

### 字号层级

| 用途 | 字号 | 行高 | 字重 | 使用场景 |
|------|------|------|------|----------|
| Display | clamp(56px, 9vw, 132px) | 0.92 | 700 | Hero 中的 POP MART 或章节大字 |
| H1 | clamp(40px, 7vw, 96px) | 1.0 | 700 | 大段落标题、章节主标题 |
| H2 | clamp(30px, 4.6vw, 64px) | 1.08 | 700 | 模块标题 |
| H3 | 28px | 1.18 | 700 | 卡片标题、流程标题 |
| Lead | 20px | 1.75 | 500 | 过渡文案、模块说明 |
| Body | 16px | 1.8 | 400 | 正文说明 |
| Small | 13px | 1.55 | 500 | 标签、导航、编号 |
| Caption | 12px | 1.45 | 600 | 状态、注释、路线节点 |

中文页面规则:

- 正文最小不低于 `15px`。
- 中文正文行高保持 `1.7` 以上。
- 英文大标题可用 `Space Grotesk`，中文标题仍使用 `Noto Sans SC` 保证字面干净。
- 字距默认 `0.02em`，Hero 大字可使用 `0`，不要使用负字距。

---

## 4. 组件样式

### 4.1 按钮

```css
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-height: 48px;
  padding: 0 22px;
  border: 1px solid transparent;
  border-radius: 999px;
  font-family: var(--font-body);
  font-size: 14px;
  font-weight: 700;
  letter-spacing: 0.02em;
  text-decoration: none;
  cursor: pointer;
  transition: transform 220ms ease, background 220ms ease, color 220ms ease, border-color 220ms ease, opacity 220ms ease;
}

.btn-primary {
  background: var(--color-accent);
  color: var(--color-text-inverse);
  border-color: var(--color-accent);
}

.btn-primary:hover {
  background: var(--color-accent-hover);
  border-color: var(--color-accent-hover);
  transform: translateY(-2px);
}

.btn-secondary {
  background: var(--color-surface-glass);
  color: var(--color-text);
  border-color: var(--color-border);
  backdrop-filter: blur(18px);
}

.btn-secondary:hover {
  background: var(--color-surface);
  border-color: var(--color-text);
  transform: translateY(-2px);
}

.btn:focus-visible {
  outline: 3px solid var(--color-candy-blue);
  outline-offset: 3px;
}

.btn:disabled,
.btn[aria-disabled="true"] {
  opacity: 0.42;
  cursor: not-allowed;
  transform: none;
}
```

### 4.2 卡片

卡片只用于 IP、收藏柜、场景和流程项，不允许把整段页面区域包成大卡片。

```css
.card {
  position: relative;
  overflow: hidden;
  border: 1px solid var(--color-border);
  border-radius: 8px;
  background: var(--color-surface);
  color: var(--color-text);
  box-shadow: var(--shadow-sm);
  transition: transform 320ms ease, box-shadow 320ms ease, border-color 320ms ease;
}

.card:hover {
  transform: translateY(-6px);
  border-color: var(--color-border-strong);
  box-shadow: var(--shadow-md);
}

.card:focus-within {
  outline: 3px solid var(--color-candy-blue);
  outline-offset: 3px;
}

.card[aria-disabled="true"] {
  opacity: 0.5;
  pointer-events: none;
}

.card-media {
  aspect-ratio: 4 / 5;
  width: 100%;
  object-fit: cover;
  background: var(--color-surface-warm);
}

.card-body {
  padding: var(--space-5);
}
```

### 4.3 输入框与选择控件

V1 没有表单，但 App Route 和筛选控件可能用到搜索或选择框，占位规范如下。

```css
.field {
  width: 100%;
  min-height: 48px;
  padding: 0 16px;
  border: 1px solid var(--color-border);
  border-radius: 8px;
  background: var(--color-surface);
  color: var(--color-text);
  font-family: var(--font-body);
  font-size: 15px;
  transition: border-color 180ms ease, box-shadow 180ms ease, background 180ms ease;
}

.field:hover {
  border-color: var(--color-border-strong);
}

.field:focus {
  border-color: var(--color-candy-blue);
  box-shadow: 0 0 0 4px rgba(107, 212, 255, 0.22);
  outline: none;
}

.field:disabled {
  background: var(--color-surface-warm);
  color: var(--color-text-muted);
  cursor: not-allowed;
}
```

### 4.4 导航

```css
.site-header {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 50;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 18px var(--page-gutter);
  color: var(--color-text-inverse);
  transition: background 260ms ease, color 260ms ease, border-color 260ms ease, padding 260ms ease;
}

.site-header.is-scrolled {
  padding-top: 12px;
  padding-bottom: 12px;
  background: rgba(255, 249, 241, 0.86);
  color: var(--color-text);
  border-bottom: 1px solid var(--color-border);
  backdrop-filter: blur(18px);
}

.nav-link {
  color: inherit;
  font-size: 13px;
  font-weight: 700;
  text-decoration: none;
  opacity: 0.76;
  transition: opacity 180ms ease, color 180ms ease;
}

.nav-link:hover,
.nav-link.is-active {
  color: var(--color-accent);
  opacity: 1;
}

.nav-link:focus-visible {
  outline: 3px solid var(--color-candy-blue);
  outline-offset: 4px;
}

.nav-link[aria-disabled="true"] {
  opacity: 0.35;
  pointer-events: none;
}
```

### 4.5 标签与章节标记

```css
.chapter-label,
.pill {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  min-height: 30px;
  padding: 0 12px;
  border: 1px solid var(--color-border);
  border-radius: 999px;
  background: var(--color-surface-glass);
  color: var(--color-text-soft);
  font-size: 12px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  backdrop-filter: blur(14px);
}

.chapter-label::before {
  content: "";
  width: 7px;
  height: 7px;
  border-radius: 999px;
  background: var(--color-accent);
}
```

### 4.6 圆角与阴影

```css
:root {
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-pill: 999px;

  --shadow-sm: 0 8px 24px rgba(24, 19, 17, 0.08);
  --shadow-md: 0 18px 50px rgba(24, 19, 17, 0.14);
  --shadow-lg: 0 32px 90px rgba(24, 19, 17, 0.22);
}
```

---

## 5. 布局原则

### 断点

| 名称 | 范围 | 布局策略 |
|------|------|----------|
| Mobile | `<= 640px` | 单列、降低动效、隐藏非必要装饰 |
| Tablet | `641px - 1024px` | 双列局部布局、卡片横滑 |
| Desktop | `>= 1025px` | 大首屏、双列/三列、路线图和地图展开 |

### 栅格与容器

```css
:root {
  --page-max: 1440px;
  --content-max: 1160px;
  --narrow-max: 760px;
  --page-gutter: clamp(20px, 4vw, 64px);

  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-5: 24px;
  --space-6: 32px;
  --space-7: 48px;
  --space-8: 64px;
  --space-9: 96px;
  --space-10: 128px;
}

.page-section {
  position: relative;
  min-height: 100svh;
  padding: var(--space-9) var(--page-gutter);
}

.section-inner {
  width: min(100%, var(--content-max));
  margin-inline: auto;
}
```

### 页面节奏

- Hero 必须接近全屏，第一屏只放 Logo、slogan、核心 CTA 和 IP 主视觉。
- Journey Intro 用大段过渡文案承接首屏，不放卡片。
- Featured IPs 和 Collector's Cabinet 保持“橱窗式”展示，每屏最多出现 3 到 4 个主要视觉焦点。
- App Route 使用路线或步骤推进，不做普通功能列表。
- Global Pop Scene 可用地图轮廓、城市点位、路线线条组成，不做真实复杂地图。
- Footer 信息密度可以高，但视觉必须收敛。

---

## 6. 页面结构与 ASCII 线框

### 6.1 Desktop 旅程结构

```text
┌────────────────────────────────────────────────────────────┐
│ Fixed Header: POP MART        Journey IPs App Global  CTA  │
├────────────────────────────────────────────────────────────┤
│ HERO                                                       │
│                                                            │
│        [POP MART Logo]                                     │
│        创造潮流，传递美好                                    │
│        [下载 App] [探索 IP 宇宙]                             │
│                                                            │
│                         [Full-bleed IP cinematic image]    │
│                                                            │
├────────────────────────────────────────────────────────────┤
│ CHAPTER 01 / THE IP JOURNEY                                │
│     从一个角色开始，进入全球潮流 IP 宇宙。                    │
├────────────────────────────────────────────────────────────┤
│ CHAPTER 02 / FEATURED IPS                                  │
│ [LABUBU card] [MOLLY card] [SKULLPANDA card] [DIMOO card]  │
├────────────────────────────────────────────────────────────┤
│ CHAPTER 03 / COLLECTOR'S CABINET                           │
│ [Blind Box] [Plush] [MEGA] [Collab]                         │
├────────────────────────────────────────────────────────────┤
│ CHAPTER 04 / APP ROUTE                                     │
│ route line: Discover -> Draw -> Collect -> Remind -> Store │
│                                [phone mockup + QR]         │
├────────────────────────────────────────────────────────────┤
│ CHAPTER 05 / GLOBAL POP SCENE                              │
│ [map / route field]     [store] [popup] [exhibition]       │
├────────────────────────────────────────────────────────────┤
│ HOW IT WORKS                                               │
│ 01 Explore   02 Collect   03 Visit   04 Continue in App    │
├────────────────────────────────────────────────────────────┤
│ FOOTER                                                     │
└────────────────────────────────────────────────────────────┘
```

### 6.2 Mobile 结构

```text
┌──────────────────────────────┐
│ Header: Logo          CTA    │
├──────────────────────────────┤
│ HERO                         │
│ POP MART                     │
│ 创造潮流，传递美好              │
│ [下载] [探索]                  │
│ [IP image]                    │
├──────────────────────────────┤
│ Chapter 01                   │
│ Journey text                 │
├──────────────────────────────┤
│ Chapter 02                   │
│ [IP card]                    │
│ [IP card]                    │
├──────────────────────────────┤
│ Chapter 03                   │
│ [Filter pills]               │
│ [Cabinet card]               │
├──────────────────────────────┤
│ Chapter 04                   │
│ [Route steps]                │
│ [QR placeholder]             │
├──────────────────────────────┤
│ Global / How it works / Foot │
└──────────────────────────────┘
```

---

## 7. 动效与交互

### 交互档位: L3 沉浸体验

允许使用:

- GSAP `3.12.5`
- ScrollTrigger
- 原生 IntersectionObserver 作为降级路径

不建议 V1 使用 WebGL 或真实 3D 场景。L3 的重点是电影感滚动、pin section、视差和路线推进，不是复杂 3D。

### L1 基础

- 按钮 hover: `220ms ease`，轻微上移。
- 卡片 hover: `320ms ease`，轻微上移、阴影增强。
- 入场: fade in + translateY，持续 `420ms`。

### L2 增强

- 滚动 reveal: 模块进入视口时标题、图片、卡片分层出现。
- 导航变化: 滚动后 Header 从透明变为磨砂浅底。
- 当前章节高亮: 根据 `activeSectionId` 改变 chapter nav 状态。

### L3 沉浸

- Hero: 首屏图像慢速缩放，Logo 和 slogan 错位入场。
- Journey Intro: 文案可做轻 pin，滚动时背景从深场过渡到暖底。
- Featured IPs: 横向卡片轨道可在桌面端做 scroll-linked translate。
- Collector's Cabinet: 产品卡片以橱窗方式逐个揭示。
- App Route: 路线节点随滚动点亮，手机样机内容同步切换。
- Global Pop Scene: 城市点位按路线依次出现，线条可用 SVG path 动画。

### 降级路径

```css
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    scroll-behavior: auto !important;
    transition-duration: 0.01ms !important;
  }
}
```

如果 GSAP 加载失败:

- 保留静态布局。
- 使用 CSS `opacity` 与 `transform` 的基础过渡。
- 所有 CTA、卡片和筛选功能必须可用。

---

## 8. 模块视觉规范

### HeroSection

- 背景使用全屏 IP 主视觉或玩具橱窗大片。
- 文字层级极少: Logo、slogan、两个 CTA。
- 背景图必须有暗色或暖色遮罩，保证文字可读。
- CTA 放在视觉焦点附近，不要藏到页面角落。

### JourneyIntroSection

- 像章节开篇，不放商品卡片。
- 用大号中文短句承接“从一个角色开始”的叙事。
- 可加入 `Chapter 01` 标签，借 Ponpon Mania 的章节感。

### FeaturedIPsSection

- 卡片像“旅程目的地”，不是普通商品卡。
- 每张卡必须有大图、IP 名称、一句话描述、2 到 3 个标签。
- 桌面端可横向铺开，移动端纵向堆叠。

### CollectorsCabinetSection

- 视觉像收藏柜或展柜。
- 盲盒、毛绒、MEGA、联名四类必须清晰区分。
- 卡片状态标签使用糖果色，但每张卡不超过一种强调色。

### AppRouteSection

- 使用路线图语义，不做普通六宫格功能介绍。
- 路线节点: Discover、Draw、Collect、Remind、Store。
- 二维码占位要像真实下载入口，不要像随便放的灰盒。

### GlobalPopSceneSection

- 地图为氛围化地图，不追求地理精确。
- 城市点位和门店、快闪、展览卡片之间要有视觉连接。
- 避免信息密度过高，不做企业数据大屏。

### HowItWorksSection

- 采用 step-by-step。
- 每个步骤控制在一个动作 + 一句说明。
- 视觉上像旅程收束，不要变成说明书。

### SiteFooter

- 可以信息密度高，但保持浅底、清晰分栏。
- 下载入口可以再次出现，但不要压过 footer 链接。

---

## 9. Do's & Don'ts

### Do

- 用 White Desert 的大首屏和滚动节奏做骨架。
- 用 POP MART 的角色、收藏、App 和全球现场填充内容。
- 用 Ponpon Mania 的 chapter 感做轻量导航和模块编号。
- 保证每一屏只有一个主要视觉任务。
- 所有交互元素都要有 hover、focus、disabled 或不可用状态。
- 移动端优先保证阅读和 CTA 可点击，再考虑动效。

### Don't

- 不要照搬 White Desert 的冷色南极感。
- 不要把页面做成普通电商商品列表。
- 不要把 Ponpon Mania 的漫画感放大成主视觉。
- 不要在卡片里再套卡片。
- 不要用一整页单一红色或单一糖果色。
- 不要让动效遮挡角色和文案。
- 不要加入 PRD V1 没有的登录、真实抽盒、支付、会员系统。
- 不要在没有真实授权素材时暗示这是官方项目。

---

## 10. 实现交接

```yaml
design_status: ready
theme:
  - 高级沉浸
  - 全球 IP 旅程
  - 潮流收藏感
  - 电影感滚动
  - 精致玩具橱窗
interaction_level: L3
evidence_level: 充分
color_system: 见第 2 节 CSS 变量
font_system: Space Grotesk + Noto Sans SC + system fallback
core_components:
  - button
  - card
  - input
  - nav
  - chapter-label
  - route-node
  - section
breakpoints:
  mobile: <=640px
  tablet: 641px-1024px
  desktop: >=1025px
motion_libs:
  - gsap@3.12.5
  - ScrollTrigger
language_default: zh-CN
mvp_scope:
  - 单个静态 index.html
  - Hero、IP Journey、Featured IPs、Collector's Cabinet、App Route、Global Pop Scene、How It Works、Footer
  - 图片占位、文本占位、模拟数据
  - 电影感滚动揭示、大片式过渡、卡片 hover、路线图锚点、二维码占位、响应式适配
```

---

## 11. 给 Claude Code 的实现指令

### 实现纪律

1. 只实现 PRD 中列出的 V1 功能，不做登录、真实抽盒、支付、会员、后台或数据库。
2. 先完成 `index.html` 的完整结构和静态样式，再加入 GSAP 动效。
3. 不引入 PRD 技术栈外的依赖。V1 允许 GSAP 与 ScrollTrigger，其他库先不加。
4. 图标使用内联 SVG 或本地 icon，不为单个图标安装依赖。
5. 图片优先使用用户素材；没有素材时使用本地占位图或 CSS 视觉占位，并写好 `alt`。
6. 颜色全部走 `var(--color-...)`，组件 CSS 不直接写 hex。
7. 所有可交互元素必须有 hover 和 focus-visible 状态。
8. 移动端优先，桌面端再增强横向轨道、pin section 和路线动画。
9. 不写 README、测试、CI、PWA、Analytics。
10. 每完成一个主要阶段先停下来汇报，不要一次性扩展超出 PRD 的新功能。

### 反模式

- 如果想加官方商城、真实下载、真实抽盒或用户收藏，先停下来问，因为 PRD 明确 V1 不做。
- 如果某个动效会影响阅读或导致移动端卡顿，优先降级为静态 reveal。
- 如果缺真实 IP 图片，不要从远程随意盗链，用占位素材结构先跑通。

---

## 12. 自审记录

- [x] 章节完整，无空模板。
- [x] 色彩系统包含 CSS 变量和 RGB 辅助值。
- [x] 按钮、卡片、输入框、导航均包含 default、hover、focus、disabled 或不可用状态。
- [x] L3 动效包含 `prefers-reduced-motion` 降级路径。
- [x] 实现交接和 Claude Code 指令完整。
- [x] 规范服务于 PRD V1，不加入登录、后台、真实数据或支付系统。

