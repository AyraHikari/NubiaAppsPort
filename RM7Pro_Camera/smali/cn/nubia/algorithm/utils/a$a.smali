.class public final enum Lcn/nubia/algorithm/utils/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/algorithm/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/algorithm/utils/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/algorithm/utils/a$a;

.field public static final enum b:Lcn/nubia/algorithm/utils/a$a;

.field public static final enum c:Lcn/nubia/algorithm/utils/a$a;

.field public static final enum d:Lcn/nubia/algorithm/utils/a$a;

.field private static final synthetic e:[Lcn/nubia/algorithm/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 100
    new-instance v0, Lcn/nubia/algorithm/utils/a$a;

    const-string v1, "BYTES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/algorithm/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/algorithm/utils/a$a;->a:Lcn/nubia/algorithm/utils/a$a;

    new-instance v1, Lcn/nubia/algorithm/utils/a$a;

    const-string v3, "YUV420SP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/algorithm/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/algorithm/utils/a$a;->b:Lcn/nubia/algorithm/utils/a$a;

    new-instance v3, Lcn/nubia/algorithm/utils/a$a;

    const-string v5, "RGB888"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/algorithm/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/algorithm/utils/a$a;->c:Lcn/nubia/algorithm/utils/a$a;

    new-instance v5, Lcn/nubia/algorithm/utils/a$a;

    const-string v7, "RGBA8888"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/algorithm/utils/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/algorithm/utils/a$a;->d:Lcn/nubia/algorithm/utils/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/nubia/algorithm/utils/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 99
    sput-object v7, Lcn/nubia/algorithm/utils/a$a;->e:[Lcn/nubia/algorithm/utils/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/algorithm/utils/a$a;
    .locals 1

    .line 99
    const-class v0, Lcn/nubia/algorithm/utils/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/algorithm/utils/a$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/algorithm/utils/a$a;
    .locals 1

    .line 99
    sget-object v0, Lcn/nubia/algorithm/utils/a$a;->e:[Lcn/nubia/algorithm/utils/a$a;

    invoke-virtual {v0}, [Lcn/nubia/algorithm/utils/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/algorithm/utils/a$a;

    return-object v0
.end method
