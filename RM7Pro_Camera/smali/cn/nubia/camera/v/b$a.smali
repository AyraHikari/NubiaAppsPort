.class public final enum Lcn/nubia/camera/v/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/v/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/v/b$a;

.field public static final enum b:Lcn/nubia/camera/v/b$a;

.field public static final enum c:Lcn/nubia/camera/v/b$a;

.field private static final synthetic e:[Lcn/nubia/camera/v/b$a;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v0, Lcn/nubia/camera/v/b$a;

    const-string v1, "NV21"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/camera/v/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/v/b$a;->a:Lcn/nubia/camera/v/b$a;

    new-instance v1, Lcn/nubia/camera/v/b$a;

    const-string v3, "RGBA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/camera/v/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    new-instance v3, Lcn/nubia/camera/v/b$a;

    const-string v5, "NV12"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/camera/v/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/v/b$a;->c:Lcn/nubia/camera/v/b$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/camera/v/b$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 66
    sput-object v5, Lcn/nubia/camera/v/b$a;->e:[Lcn/nubia/camera/v/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcn/nubia/camera/v/b$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/v/b$a;
    .locals 1

    .line 66
    const-class v0, Lcn/nubia/camera/v/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/v/b$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/v/b$a;
    .locals 1

    .line 66
    sget-object v0, Lcn/nubia/camera/v/b$a;->e:[Lcn/nubia/camera/v/b$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/v/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/v/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/camera/v/b$a;->d:I

    return v0
.end method
