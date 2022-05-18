.class Lcn/nubia/music/fragment/QuickSearchFragment$2;
.super Ljava/lang/Object;
.source "QuickSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/QuickSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$2;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$2;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$300(Lcn/nubia/music/fragment/QuickSearchFragment;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
