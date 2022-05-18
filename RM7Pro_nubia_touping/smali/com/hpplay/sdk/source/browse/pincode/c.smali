.class public Lcom/hpplay/sdk/source/browse/pincode/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->b:I

    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->c:I

    .line 11
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->b:I

    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->c:I

    .line 15
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->c:I

    .line 17
    iput p2, p0, Lcom/hpplay/sdk/source/browse/pincode/c;->b:I

    .line 18
    return-void
.end method
