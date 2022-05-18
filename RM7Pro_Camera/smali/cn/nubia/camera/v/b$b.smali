.class public final enum Lcn/nubia/camera/v/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/v/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/v/b$b;

.field public static final enum b:Lcn/nubia/camera/v/b$b;

.field private static final synthetic c:[Lcn/nubia/camera/v/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 93
    new-instance v0, Lcn/nubia/camera/v/b$b;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/v/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    new-instance v1, Lcn/nubia/camera/v/b$b;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/v/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/v/b$b;->b:Lcn/nubia/camera/v/b$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/camera/v/b$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 92
    sput-object v3, Lcn/nubia/camera/v/b$b;->c:[Lcn/nubia/camera/v/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/v/b$b;
    .locals 1

    .line 92
    const-class v0, Lcn/nubia/camera/v/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/v/b$b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/v/b$b;
    .locals 1

    .line 92
    sget-object v0, Lcn/nubia/camera/v/b$b;->c:[Lcn/nubia/camera/v/b$b;

    invoke-virtual {v0}, [Lcn/nubia/camera/v/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/v/b$b;

    return-object v0
.end method
