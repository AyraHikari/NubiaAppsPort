.class public Lcn/nubia/camera/zoom/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/zoom/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:F

.field c:F

.field final synthetic d:Lcn/nubia/camera/zoom/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcn/nubia/camera/zoom/d$a;->d:Lcn/nubia/camera/zoom/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcn/nubia/camera/zoom/d$a;->a:Ljava/lang/String;

    .line 352
    iput p3, p0, Lcn/nubia/camera/zoom/d$a;->b:F

    .line 353
    iput p4, p0, Lcn/nubia/camera/zoom/d$a;->c:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/zoom/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoomCamera{mCameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/zoom/d$a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/zoom/d$a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
