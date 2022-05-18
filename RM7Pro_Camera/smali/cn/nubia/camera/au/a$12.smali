.class Lcn/nubia/camera/au/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/camera/au/a$12;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 2

    const-string v0, "StarTrackFragment"

    const-string v1, "onPreviewDataCopy"

    .line 219
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/au/a$12;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method
