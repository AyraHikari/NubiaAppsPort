.class public Lcn/nubia/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 2

    const-string v0, "DebugCameraFramework"

    const/4 v1, 0x3

    .line 16
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/b/g;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcn/nubia/b/g;->a:Z

    return v0
.end method
