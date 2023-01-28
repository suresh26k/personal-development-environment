from textual.app import App
from textual.widgets import Header, Footer, FileClick, ScrollView, DirectoryTree, Button

from rich.panel import Panel


from textual.reactive import Reactive
from textual.widget import Widget


class DevSetup(App):
    """DevSetup

    Args:
        App (): DevSetup
    """
    
    async def on_load(self) -> None:
        """Sent before going in to application mode."""

        # Bind our basic keys
        await self.bind("b", "view.toggle('sidebar')", "Toggle sidebar")
        await self.bind("q", "quit", "Quit")

    async def on_mount(self) -> None:
        """Call after terminal goes in to application mode"""

        # Create our widgets
        # In this a scroll view for the code and a directory tree
        self.body = ScrollView()
        # self.directory = DirectoryTree(self.path, "Code")

        # Dock our widgets
        await self.view.dock(Header(), edge="top")
        await self.view.dock(Footer(), edge="bottom")

        # Note the directory is also in a scroll view
        await self.view.dock(
            ScrollView(
                Button(FigletText("ssklkslks"), name="text")
                ), edge="left", size=48, name="sidebar"
        )
        await self.view.dock(self.body, edge="top")

# class DevSetupOld(App):
#     def on_key(self):
#         self.console.bell()
        
#     async def on_mount(self) -> None:
#         await self.view.dock(Placeholder(), edge="left", size=40)
#         await self.view.dock(Placeholder(), Placeholder(), edge="top")


    

# class Hover(Widget):

#     mouse_over = Reactive(False)

#     def render(self) -> Panel:
#         return Panel("Hello [b]World[/b]", style=("on red" if self.mouse_over else ""))

#     def on_enter(self) -> None:
#         self.mouse_over = True

#     def on_leave(self) -> None:
#         self.mouse_over = False


# class HoverApp(App):
#     """Demonstrates custom widgets"""

#     async def on_mount(self) -> None:
#         hovers = (Hover() for _ in range(10))
#         await self.view.dock(*hovers, edge="top")


