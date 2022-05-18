.class Lcn/nubia/camera/trackclinet/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/trackclinet/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcn/nubia/camera/trackclinet/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcn/nubia/camera/trackclinet/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/camera/trackclinet/a;-><init>(Lcn/nubia/camera/trackclinet/a$1;)V

    sput-object v0, Lcn/nubia/camera/trackclinet/a$a;->a:Lcn/nubia/camera/trackclinet/a;

    return-void
.end method
