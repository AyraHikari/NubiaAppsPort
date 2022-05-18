.class Landroid/support/v7/widget/d$2;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/d;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v7/widget/d$2;->a:Landroid/support/v7/widget/d;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/d$2;->a:Landroid/support/v7/widget/d;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/d;->a(II)V

    .line 131
    return-void
.end method
