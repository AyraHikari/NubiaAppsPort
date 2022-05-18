.class public Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "StaticOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# instance fields
.field protected final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/adapters/StaticOverScrollDecorAdapter;->mView:Landroid/view/View;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
