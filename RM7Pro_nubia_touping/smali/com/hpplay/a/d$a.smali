.class public final Lcom/hpplay/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/hpplay/a/d$a;->a:I

    .line 39
    iput p2, p0, Lcom/hpplay/a/d$a;->b:I

    .line 40
    iput-object p3, p0, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 45
    instance-of v0, p1, Lcom/hpplay/a/d$a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/hpplay/a/d$a;->a:I

    move-object v0, p1

    check-cast v0, Lcom/hpplay/a/d$a;

    iget v0, v0, Lcom/hpplay/a/d$a;->a:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/hpplay/a/d$a;->b:I

    move-object v0, p1

    check-cast v0, Lcom/hpplay/a/d$a;

    iget v0, v0, Lcom/hpplay/a/d$a;->b:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    check-cast p1, Lcom/hpplay/a/d$a;

    iget-object v1, p1, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
