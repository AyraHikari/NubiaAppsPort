.class Lcn/nubia/music/adapter/CustomRecycleAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$b;
.source "CustomRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/adapter/CustomRecycleAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic c:Lcn/nubia/music/adapter/CustomRecycleAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/music/adapter/CustomRecycleAdapter;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;->c:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    iput-object p2, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;->c:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->b()I

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomRecycleAdapter$1;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->b()I

    move-result v0

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
