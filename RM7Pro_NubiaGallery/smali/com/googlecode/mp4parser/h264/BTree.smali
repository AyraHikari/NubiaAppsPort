.class public Lcom/googlecode/mp4parser/h264/BTree;
.super Ljava/lang/Object;
.source "BTree.java"


# instance fields
.field private one:Lcom/googlecode/mp4parser/h264/BTree;

.field private value:Ljava/lang/Object;

.field private zero:Lcom/googlecode/mp4parser/h264/BTree;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iput-object p2, p0, Lcom/googlecode/mp4parser/h264/BTree;->value:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/googlecode/mp4parser/h264/BTree;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h264/BTree;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    if-nez v0, :cond_3

    .line 53
    new-instance v0, Lcom/googlecode/mp4parser/h264/BTree;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h264/BTree;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    :goto_0
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/mp4parser/h264/BTree;->addString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public down(I)Lcom/googlecode/mp4parser/h264/BTree;
    .locals 0

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    return-object p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->value:Ljava/lang/Object;

    return-object v0
.end method
