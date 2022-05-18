.class Lcom/zte/mifavor/widget/TabButtonBar$3;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TabButtonBar;->ensureCollapseButtonView()V
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

    .line 654
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$3;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar$3;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->collapseActionView()V

    return-void
.end method
