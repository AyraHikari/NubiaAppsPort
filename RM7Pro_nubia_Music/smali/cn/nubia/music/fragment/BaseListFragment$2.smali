.class Lcn/nubia/music/fragment/BaseListFragment$2;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseListFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseListFragment$2;->a:Lcn/nubia/music/fragment/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseListFragment$2;->a:Lcn/nubia/music/fragment/BaseListFragment;

    invoke-virtual {v0, p3}, Lcn/nubia/music/fragment/BaseListFragment;->itemClick(I)V

    .line 104
    return-void
.end method
