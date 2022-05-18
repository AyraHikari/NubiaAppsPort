.class public Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/pincode/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/hpplay/sdk/source/browse/pincode/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "PinCodeParser"

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->a:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "PinCodeParser"

    const-string v1, "PinCodeParser is initiated"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/b;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/pincode/b;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/pincode/a;->a()V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/pincode/a;->a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V

    .line 33
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/pincode/a;->a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 26
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/pincode/c;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/PinCodeParser;->b:Lcom/hpplay/sdk/source/browse/pincode/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/pincode/a;->a(Lcom/hpplay/sdk/source/browse/pincode/c;)V

    .line 52
    :cond_0
    return-void
.end method
