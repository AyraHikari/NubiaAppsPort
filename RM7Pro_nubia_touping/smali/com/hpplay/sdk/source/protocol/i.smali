.class public Lcom/hpplay/sdk/source/protocol/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[B

.field private b:Lcom/hpplay/sdk/source/protocol/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/j;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/i;->b:Lcom/hpplay/sdk/source/protocol/j;

    .line 27
    return-void
.end method

.method public a([[B)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/i;->a:[[B

    .line 19
    return-void
.end method

.method public a()[[B
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/i;->a:[[B

    return-object v0
.end method

.method public b()Lcom/hpplay/sdk/source/protocol/j;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/i;->b:Lcom/hpplay/sdk/source/protocol/j;

    return-object v0
.end method
