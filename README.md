## 🎮 Game Design – “Cell Power” (Working Title)

### Core Concept
“Cell Power” is an educational puzzle game set inside biological cells. The player's job is to keep cells alive and functioning by producing **ATP**, the energy currency of life. To do this, they must solve puzzles involving real biochemical systems—without requiring prior scientific knowledge. The game introduces molecular interactions, energy production, and biological logic visually and interactively. Scientific terminology is minimized in-game, with **accurate names mapped to intuitive, game-friendly terms** behind the scenes.

### Terminology Mapping Principle
The design uses a **two-layer model** for terminology:

- **In-Game:** Simplified or metaphorical terms (e.g., "Power Beads" for ATP, "Fuel Drops" for Glucose).
- **Documentation/Educational Layer:** Full scientific names with clear mapping to game elements.

This approach supports intuitive learning while preserving biological accuracy.

### Game Structure: The Three Pillars

#### 1. ⚡ ATP-ADP Cycle ("Power Core")
- **Goal:** Regenerate ATP (“Power Beads”) from ADP + Pi.
- **Processes Modeled:** Glycolysis, Krebs cycle, oxidative phosphorylation.
- **Mechanics:** Reaction sequencing, energy balancing, timed molecule availability.
- **Doc Terms:** ATP/ADP, Pyruvate, NAD⁺/NADH, electron transport chain.

#### 2. 🚚 Molecular Transport ("Cell Transit")
- **Goal:** Move molecules to where they’re needed.
- **Processes Modeled:** Passive/active transport, vesicles, diffusion.
- **Mechanics:** Grid-based or network-based routing, channel upgrades.
- **Doc Terms:** Ion channels, protein pumps, osmosis, endocytosis.

#### 3. 🔬 Enzyme Engineering ("Reaction Rings")
- **Goal:** Build and optimize biochemical pathways using enzymes.
- **Processes Modeled:** Catalysis, reaction sequences, feedback loops.
- **Mechanics:** Flowchart or circuit-based puzzles, unlockable reactions.
- **Doc Terms:** Hexokinase, isomerase, ATP synthase.

### Gameplay Flow (Prototype Vision)
- Begin with isolated puzzles (e.g., generate 5 ATP).
- Progress to integrated systems requiring transport + reaction design.
- Later levels combine all pillars into open-ended survival or challenge modes.
- Include sandbox or explore mode for experimentation.

### Visual Style (Prototype)
- Schematic, minimalistic line-drawing aesthetic.
- Color-coded molecules and flows.
- Simple, readable UI and feedback.

### Educational Goals
- Teach biological systems through interaction.
- Introduce concepts before terminology.
- Offer optional deeper learning through post-level summaries or glossaries.

---

## 🛠️ Tech Stack – “Cell Power” Prototype

### Core Language & Environment
- **Language:** Go (Golang)
- **Environment:** Cursor for AI-assisted development, terminal tools for building/testing.

### Graphics / UI
- **Library:** Ebiten (2D game library for Go)
- **Approach:**
  - Primary: Spritesheets (PNG assets)
  - Supplemental: Drawing primitives (lines, circles) for overlays and dynamic visuals
  - Future: Pre-rendered vector assets at multiple resolutions

### Project Structure (Initial)
- `main.go` – Entry and game loop
- `core/` – Logic (molecules, reactions, transport)
- `ui/` – Rendering and input
- `assets/` – Placeholder art and config
- `data/` – Molecule definitions and levels

### Tools & Workflow
- **Version Control:** Git + GitHub
- **Build:** Go native tools (`go run`, `go build`)
- **Testing:** Lightweight unit tests (`*_test.go`)
- **Prompting Tools:** Cursor, ChatGPT

### Prototype Scope
- Focused on Pillar 1: ATP-ADP system
- Basic 2D rendering, interaction, and simulation logic
- Modular to support other pillars later

---

## 🚧 Prototype Plan & Milestones

### Milestone 1: Render Initial Grid & Placeholder Content
**Goal:** Display 2D grid with placeholder elements.
**Tasks:**
- Initialize Ebiten game loop
- Render fixed-size grid (e.g., 10x10)
- Add placeholder sprites (molecules, enzymes)
- Optional debug overlay
**Deliverable:** Visible grid with static content

### Milestone 2: Basic Cursor Movement & Selection (ASWD)
**Goal:** Move selection cursor over grid and select elements.
**Tasks:**
- Render visible cursor/highlight
- Map ASWD to cursor movement
- Implement basic selection mechanic
- Optional: Show data for selected item
**Deliverable:** Cursor with movement and selection

### Milestone 3: Molecule Movement & Basic Reaction Simulation
**Goal:** Enable basic molecule movement and start simulating simple reactions.
**Tasks:**
- Move molecules across grid tiles
- Define basic molecule types (e.g., ADP, ATP)
- Simulate one or two reaction rules (e.g., ADP + Pi → ATP)
- Visual feedback for successful reaction
**Deliverable:** Interactive grid where molecule actions create visible energy results

### Design Notes
- Initial grid layout will evolve into more flexible spatial system
- Game logic should decouple from tile-based assumptions early

