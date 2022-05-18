.class public final enum Lcn/nubia/collage/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/collage/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/collage/c;

.field public static final enum b:Lcn/nubia/collage/c;

.field public static final enum c:Lcn/nubia/collage/c;

.field public static final enum d:Lcn/nubia/collage/c;

.field private static final synthetic e:[Lcn/nubia/collage/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcn/nubia/collage/c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/collage/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/collage/c;->a:Lcn/nubia/collage/c;

    new-instance v1, Lcn/nubia/collage/c;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/collage/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/collage/c;->b:Lcn/nubia/collage/c;

    new-instance v3, Lcn/nubia/collage/c;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/collage/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/collage/c;->c:Lcn/nubia/collage/c;

    new-instance v5, Lcn/nubia/collage/c;

    const-string v7, "LARGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/collage/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/collage/c;->d:Lcn/nubia/collage/c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/nubia/collage/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/nubia/collage/c;->e:[Lcn/nubia/collage/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/collage/c;
    .locals 1

    const-class v0, Lcn/nubia/collage/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/collage/c;

    return-object p0
.end method

.method public static values()[Lcn/nubia/collage/c;
    .locals 1

    sget-object v0, Lcn/nubia/collage/c;->e:[Lcn/nubia/collage/c;

    invoke-virtual {v0}, [Lcn/nubia/collage/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/collage/c;

    return-object v0
.end method
