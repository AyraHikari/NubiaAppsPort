.class public Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImplVerticalLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method protected constructor <init>(Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
