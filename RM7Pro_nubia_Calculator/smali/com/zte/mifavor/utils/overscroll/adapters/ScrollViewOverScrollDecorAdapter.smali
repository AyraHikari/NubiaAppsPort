.class public Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "ScrollViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "QW-QScroll-ScrollAdapter"


# instance fields
.field protected final mView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
