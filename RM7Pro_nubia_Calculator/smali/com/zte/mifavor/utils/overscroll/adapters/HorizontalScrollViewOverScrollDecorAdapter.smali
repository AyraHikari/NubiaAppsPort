.class public Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "HorizontalScrollViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-HAdapter"


# instance fields
.field protected final mView:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/HorizontalScrollView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/HorizontalScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/HorizontalScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
