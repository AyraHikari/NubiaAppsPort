.class public final enum Lcn/nubia/algorithm/utils/YUVAlgorithm$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/algorithm/utils/YUVAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/algorithm/utils/YUVAlgorithm$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

.field public static final enum b:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

.field public static final enum c:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

.field private static final synthetic e:[Lcn/nubia/algorithm/utils/YUVAlgorithm$a;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 137
    new-instance v0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->a:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    new-instance v1, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->b:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    new-instance v3, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    const-string v5, "HORIZONTAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->c:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 136
    sput-object v5, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->e:[Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/algorithm/utils/YUVAlgorithm$a;
    .locals 1

    .line 136
    const-class v0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/algorithm/utils/YUVAlgorithm$a;
    .locals 1

    .line 136
    sget-object v0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->e:[Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    invoke-virtual {v0}, [Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 145
    iget v0, p0, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->d:I

    return v0
.end method
