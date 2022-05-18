.class public Lcom/bluestareffects/app/weather/api/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# instance fields
.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mResourceCountMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V
    .locals 1
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    .line 17
    iput-object p1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 18
    return-void
.end method


# virtual methods
.method public addResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 21
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 22
    .local v0, "number":I
    add-int/lit8 v0, v0, 0x1

    .line 23
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    return-void
.end method

.method public removeResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 27
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 28
    .local v0, "number":I
    add-int/lit8 v0, v0, -0x1

    .line 29
    if-gtz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 31
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v1, p1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->deleteTexture(I)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/api/ResourceManager;->mResourceCountMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
