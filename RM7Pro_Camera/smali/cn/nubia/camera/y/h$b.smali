.class final enum Lcn/nubia/camera/y/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/y/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/y/h$b;

.field public static final enum b:Lcn/nubia/camera/y/h$b;

.field private static final synthetic c:[Lcn/nubia/camera/y/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 201
    new-instance v0, Lcn/nubia/camera/y/h$b;

    const-string v1, "ARGB_BUFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/y/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/y/h$b;->a:Lcn/nubia/camera/y/h$b;

    new-instance v1, Lcn/nubia/camera/y/h$b;

    const-string v3, "YUV_BUFFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/y/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/y/h$b;->b:Lcn/nubia/camera/y/h$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/camera/y/h$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 200
    sput-object v3, Lcn/nubia/camera/y/h$b;->c:[Lcn/nubia/camera/y/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/y/h$b;
    .locals 1

    .line 200
    const-class v0, Lcn/nubia/camera/y/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/y/h$b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/y/h$b;
    .locals 1

    .line 200
    sget-object v0, Lcn/nubia/camera/y/h$b;->c:[Lcn/nubia/camera/y/h$b;

    invoke-virtual {v0}, [Lcn/nubia/camera/y/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/y/h$b;

    return-object v0
.end method
