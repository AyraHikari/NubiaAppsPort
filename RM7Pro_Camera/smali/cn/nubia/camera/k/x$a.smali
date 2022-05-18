.class public final enum Lcn/nubia/camera/k/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/k/x$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/k/x$a;

.field public static final enum b:Lcn/nubia/camera/k/x$a;

.field public static final enum c:Lcn/nubia/camera/k/x$a;

.field private static final synthetic d:[Lcn/nubia/camera/k/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 492
    new-instance v0, Lcn/nubia/camera/k/x$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/k/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    .line 493
    new-instance v1, Lcn/nubia/camera/k/x$a;

    const-string v3, "SINGLE_FIRE_TO_TORCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/k/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/k/x$a;->b:Lcn/nubia/camera/k/x$a;

    .line 494
    new-instance v3, Lcn/nubia/camera/k/x$a;

    const-string v5, "SINGLE_FIRE_TO_OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/camera/k/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/camera/k/x$a;->c:Lcn/nubia/camera/k/x$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/camera/k/x$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 491
    sput-object v5, Lcn/nubia/camera/k/x$a;->d:[Lcn/nubia/camera/k/x$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/k/x$a;
    .locals 1

    .line 491
    const-class v0, Lcn/nubia/camera/k/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/k/x$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/k/x$a;
    .locals 1

    .line 491
    sget-object v0, Lcn/nubia/camera/k/x$a;->d:[Lcn/nubia/camera/k/x$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/k/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/k/x$a;

    return-object v0
.end method
