.class public final enum Lcn/nubia/camera/ab/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ab/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/ab/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/ab/a$a;

.field public static final enum b:Lcn/nubia/camera/ab/a$a;

.field private static final synthetic c:[Lcn/nubia/camera/ab/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcn/nubia/camera/ab/a$a;

    const-string v1, "SPACE_IS_LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/ab/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    new-instance v1, Lcn/nubia/camera/ab/a$a;

    const-string v3, "MEDIA_EJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/ab/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/ab/a$a;->b:Lcn/nubia/camera/ab/a$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/camera/ab/a$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 50
    sput-object v3, Lcn/nubia/camera/ab/a$a;->c:[Lcn/nubia/camera/ab/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/ab/a$a;
    .locals 1

    .line 50
    const-class v0, Lcn/nubia/camera/ab/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/ab/a$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/ab/a$a;
    .locals 1

    .line 50
    sget-object v0, Lcn/nubia/camera/ab/a$a;->c:[Lcn/nubia/camera/ab/a$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/ab/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/ab/a$a;

    return-object v0
.end method
