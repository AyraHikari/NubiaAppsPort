.class Lcn/nubia/camera/r/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 2

    .line 900
    iput-object p1, p0, Lcn/nubia/camera/r/e$b;->b:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/r/e$b;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 912
    iget-object v2, p0, Lcn/nubia/camera/r/e$b;->b:Lcn/nubia/camera/r/e;

    invoke-static {v2}, Lcn/nubia/camera/r/e;->z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v2

    iget-wide v3, p0, Lcn/nubia/camera/r/e$b;->a:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x64

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZI)V

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 905
    iget-object v2, p0, Lcn/nubia/camera/r/e$b;->b:Lcn/nubia/camera/r/e;

    invoke-static {v2}, Lcn/nubia/camera/r/e;->z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v2

    mul-int/lit8 p1, p1, 0x64

    iget-object v3, p0, Lcn/nubia/camera/r/e$b;->b:Lcn/nubia/camera/r/e;

    invoke-static {v3}, Lcn/nubia/camera/r/e;->C(Lcn/nubia/camera/r/e;)I

    move-result v3

    div-int/2addr p1, v3

    iget-wide v3, p0, Lcn/nubia/camera/r/e$b;->a:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZI)V

    .line 906
    iput-wide v0, p0, Lcn/nubia/camera/r/e$b;->a:J

    return-void
.end method
