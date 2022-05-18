.class public Lcn/nubia/camera/prisma/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prisma/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/nubia/algorithm/utils/a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lcn/nubia/camera/prisma/b$a;


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/utils/a;IIIILcn/nubia/camera/prisma/b$a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/prisma/b;->a:Lcn/nubia/algorithm/utils/a;

    .line 22
    iput p2, p0, Lcn/nubia/camera/prisma/b;->b:I

    .line 23
    iput p3, p0, Lcn/nubia/camera/prisma/b;->c:I

    .line 24
    iput p4, p0, Lcn/nubia/camera/prisma/b;->d:I

    .line 25
    iput p5, p0, Lcn/nubia/camera/prisma/b;->e:I

    .line 26
    iput-object p6, p0, Lcn/nubia/camera/prisma/b;->f:Lcn/nubia/camera/prisma/b$a;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/algorithm/utils/a;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/prisma/b;->a:Lcn/nubia/algorithm/utils/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 34
    iget v0, p0, Lcn/nubia/camera/prisma/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 38
    iget v0, p0, Lcn/nubia/camera/prisma/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 42
    iget v0, p0, Lcn/nubia/camera/prisma/b;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 46
    iget v0, p0, Lcn/nubia/camera/prisma/b;->e:I

    return v0
.end method

.method public f()Lcn/nubia/camera/prisma/b$a;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/prisma/b;->f:Lcn/nubia/camera/prisma/b$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JobBean{mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/prisma/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/prisma/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCameraFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/prisma/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSensorOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/prisma/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
