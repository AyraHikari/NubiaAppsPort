.class public Lcn/nubia/camera/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>([BIIJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/camera/k/e;->a:[B

    .line 16
    iput p2, p0, Lcn/nubia/camera/k/e;->b:I

    .line 17
    iput p3, p0, Lcn/nubia/camera/k/e;->c:I

    .line 18
    iput-wide p4, p0, Lcn/nubia/camera/k/e;->d:J

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcn/nubia/camera/k/e;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 30
    iget v0, p0, Lcn/nubia/camera/k/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 34
    iget v0, p0, Lcn/nubia/camera/k/e;->c:I

    return v0
.end method

.method public d()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcn/nubia/camera/k/e;->d:J

    return-wide v0
.end method
