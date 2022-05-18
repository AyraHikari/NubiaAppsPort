.class Lcn/nubia/camera/panorama/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/location/Location;

.field e:F

.field f:F

.field g:I

.field h:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Location;FFII)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/e$b;->a:Z

    .line 206
    iput-object p2, p0, Lcn/nubia/camera/panorama/e$b;->b:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcn/nubia/camera/panorama/e$b;->c:Ljava/lang/String;

    .line 208
    iput-object p4, p0, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    .line 209
    iput p5, p0, Lcn/nubia/camera/panorama/e$b;->e:F

    .line 210
    iput p6, p0, Lcn/nubia/camera/panorama/e$b;->f:F

    .line 211
    iput p7, p0, Lcn/nubia/camera/panorama/e$b;->g:I

    .line 212
    iput p8, p0, Lcn/nubia/camera/panorama/e$b;->h:I

    return-void
.end method
