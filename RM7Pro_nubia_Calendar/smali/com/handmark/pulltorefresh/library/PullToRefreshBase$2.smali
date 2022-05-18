.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 861
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 864
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->requestLayout()V

    .line 865
    return-void
.end method
