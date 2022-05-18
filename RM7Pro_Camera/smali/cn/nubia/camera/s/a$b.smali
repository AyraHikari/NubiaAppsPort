.class public final enum Lcn/nubia/camera/s/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/s/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/s/a$b;

.field public static final enum b:Lcn/nubia/camera/s/a$b;

.field public static final enum c:Lcn/nubia/camera/s/a$b;

.field private static final synthetic e:[Lcn/nubia/camera/s/a$b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v0, Lcn/nubia/camera/s/a$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/s/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/s/a$b;->a:Lcn/nubia/camera/s/a$b;

    new-instance v1, Lcn/nubia/camera/s/a$b;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcn/nubia/camera/s/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    new-instance v3, Lcn/nubia/camera/s/a$b;

    const-string v5, "MALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcn/nubia/camera/s/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/camera/s/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 64
    sput-object v5, Lcn/nubia/camera/s/a$b;->e:[Lcn/nubia/camera/s/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcn/nubia/camera/s/a$b;->d:I

    return-void
.end method

.method public static a(I)Lcn/nubia/camera/s/a$b;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 81
    sget-object p0, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    return-object p0

    .line 79
    :cond_0
    sget-object p0, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    return-object p0

    .line 77
    :cond_1
    sget-object p0, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/s/a$b;
    .locals 1

    .line 64
    const-class v0, Lcn/nubia/camera/s/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/s/a$b;
    .locals 1

    .line 64
    sget-object v0, Lcn/nubia/camera/s/a$b;->e:[Lcn/nubia/camera/s/a$b;

    invoke-virtual {v0}, [Lcn/nubia/camera/s/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/s/a$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 72
    iget v0, p0, Lcn/nubia/camera/s/a$b;->d:I

    return v0
.end method
