.class Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;
.super Ljava/lang/Object;
.source "ShaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/core/ShaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawCall"
.end annotation


# instance fields
.field private final mShader:Lcom/bluestareffects/sdk/core/IShader$Impl;

.field private final mToken:I


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/core/IShader$Impl;I)V
    .locals 0
    .param p1, "shader"    # Lcom/bluestareffects/sdk/core/IShader$Impl;
    .param p2, "token"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->mShader:Lcom/bluestareffects/sdk/core/IShader$Impl;

    .line 20
    iput p2, p0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->mToken:I

    .line 21
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->mShader:Lcom/bluestareffects/sdk/core/IShader$Impl;

    iget v1, p0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->mToken:I

    invoke-interface {v0, v1}, Lcom/bluestareffects/sdk/core/IShader$Impl;->executeDrawCall(I)V

    .line 24
    return-void
.end method

.method getShader()Lcom/bluestareffects/sdk/core/IShader$Impl;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/ShaderManager$DrawCall;->mShader:Lcom/bluestareffects/sdk/core/IShader$Impl;

    return-object v0
.end method
