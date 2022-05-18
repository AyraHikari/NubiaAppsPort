.class Lcom/zte/mifavor/widget/TabButtonBar$1;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 67
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$1;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar$1;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->showOverflowMenu()Z

    return-void
.end method
