.class Lcom/zte/mifavor/widget/TabButtonBar$2;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Landroid/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TabButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TabButtonBar;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TabButtonBar;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$2;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$2;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {v0}, Lcom/zte/mifavor/widget/TabButtonBar;->access$000(Lcom/zte/mifavor/widget/TabButtonBar;)Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar$2;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->access$000(Lcom/zte/mifavor/widget/TabButtonBar;)Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
