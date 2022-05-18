.class public final enum Lcn/nubia/b/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/b/i;

.field public static final enum b:Lcn/nubia/b/i;

.field public static final enum c:Lcn/nubia/b/i;

.field public static final enum d:Lcn/nubia/b/i;

.field public static final enum e:Lcn/nubia/b/i;

.field public static final enum f:Lcn/nubia/b/i;

.field private static final synthetic g:[Lcn/nubia/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lcn/nubia/b/i;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    .line 18
    new-instance v1, Lcn/nubia/b/i;

    const-string v3, "off"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 22
    new-instance v3, Lcn/nubia/b/i;

    const-string v5, "manual"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/b/i;->c:Lcn/nubia/b/i;

    .line 26
    new-instance v5, Lcn/nubia/b/i;

    const-string v7, "on"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    .line 30
    new-instance v7, Lcn/nubia/b/i;

    const-string v9, "torch"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    .line 34
    new-instance v9, Lcn/nubia/b/i;

    const-string v11, "red_eye"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/b/i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/b/i;->f:Lcn/nubia/b/i;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/nubia/b/i;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 10
    sput-object v11, Lcn/nubia/b/i;->g:[Lcn/nubia/b/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/b/i;
    .locals 1

    .line 10
    const-class v0, Lcn/nubia/b/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/b/i;

    return-object p0
.end method

.method public static values()[Lcn/nubia/b/i;
    .locals 1

    .line 10
    sget-object v0, Lcn/nubia/b/i;->g:[Lcn/nubia/b/i;

    invoke-virtual {v0}, [Lcn/nubia/b/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/b/i;

    return-object v0
.end method
