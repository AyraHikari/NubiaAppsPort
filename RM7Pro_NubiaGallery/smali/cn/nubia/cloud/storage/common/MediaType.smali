.class public final enum Lcn/nubia/cloud/storage/common/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/storage/common/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/storage/common/MediaType;

.field public static final enum AUDIO:Lcn/nubia/cloud/storage/common/MediaType;

.field public static final enum DOC:Lcn/nubia/cloud/storage/common/MediaType;

.field public static final enum IMAGE:Lcn/nubia/cloud/storage/common/MediaType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

.field public static final enum VIDEO:Lcn/nubia/cloud/storage/common/MediaType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcn/nubia/cloud/storage/common/MediaType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/storage/common/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    .line 5
    new-instance v1, Lcn/nubia/cloud/storage/common/MediaType;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/cloud/storage/common/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/cloud/storage/common/MediaType;->IMAGE:Lcn/nubia/cloud/storage/common/MediaType;

    .line 6
    new-instance v3, Lcn/nubia/cloud/storage/common/MediaType;

    const-string v5, "AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/cloud/storage/common/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/cloud/storage/common/MediaType;->AUDIO:Lcn/nubia/cloud/storage/common/MediaType;

    .line 7
    new-instance v5, Lcn/nubia/cloud/storage/common/MediaType;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/nubia/cloud/storage/common/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/cloud/storage/common/MediaType;->VIDEO:Lcn/nubia/cloud/storage/common/MediaType;

    .line 8
    new-instance v7, Lcn/nubia/cloud/storage/common/MediaType;

    const-string v9, "DOC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/nubia/cloud/storage/common/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/cloud/storage/common/MediaType;->DOC:Lcn/nubia/cloud/storage/common/MediaType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/nubia/cloud/storage/common/MediaType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcn/nubia/cloud/storage/common/MediaType;->$VALUES:[Lcn/nubia/cloud/storage/common/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcn/nubia/cloud/storage/common/MediaType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/storage/common/MediaType;
    .locals 5

    .line 20
    invoke-static {}, Lcn/nubia/cloud/storage/common/MediaType;->values()[Lcn/nubia/cloud/storage/common/MediaType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 21
    iget v4, v3, Lcn/nubia/cloud/storage/common/MediaType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/MediaType;
    .locals 1

    .line 3
    const-class v0, Lcn/nubia/cloud/storage/common/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/storage/common/MediaType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/storage/common/MediaType;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->$VALUES:[Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/storage/common/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/storage/common/MediaType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcn/nubia/cloud/storage/common/MediaType;->mValue:I

    return v0
.end method
