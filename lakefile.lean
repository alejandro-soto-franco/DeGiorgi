import Lake
open Lake DSL

package «DeGiorgi» where
  leanOptions := #[⟨`autoImplicit, false⟩]

-- Shared mathlib worktree (v4.29.1). See feedback_lean_caches_symlink_convention
-- in ~/.claude memory for rationale.
require mathlib from
  "/home/alejandrosotofranco/mathlib4-fork-stable"

-- REPL's latest v4.29.x tag is v4.29.0 (no v4.29.1 release yet); kept on
-- its `stable` branch which points at the v4.29.0 tag.
require REPL from git
  "https://github.com/leanprover-community/repl" @ "stable"

@[default_target]
lean_lib «DeGiorgi» where
  globs := #[.submodules `DeGiorgi]
