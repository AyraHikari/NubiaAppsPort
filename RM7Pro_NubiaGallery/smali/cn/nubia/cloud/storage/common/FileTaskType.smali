.class public final enum Lcn/nubia/cloud/storage/common/FileTaskType;
.super Ljava/lang/Enum;
.source "FileTaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/storage/common/FileTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/storage/common/FileTaskType;

.field public static final enum ALL:Lcn/nubia/cloud/storage/common/FileTaskType;

.field public static final enum DOWNLOAD:Lcn/nubia/cloud/storage/common/FileTaskType;

.field public static final enum UPLOAD:Lcn/nubia/cloud/storage/common/FileTaskType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcn/nubia/cloud/storage/common/FileTaskType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/storage/common/FileTaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/storage/common/FileTaskType;->ALL:Lcn/nubia/cloud/storage/common/FileTaskType;

    .line 5
    new-instance v1, Lcn/nubia/cloud/storage/common/FileTaskType;

    const-string v3, "DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/cloud/storage/common/FileTaskType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/cloud/storage/common/FileTaskType;->DOWNLOAD:Lcn/nubia/cloud/storage/common/FileTaskType;

    .line 6
    new-instance v3, Lcn/nubia/cloud/storage/common/FileTaskType;

    const-string v5, "UPLOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/cloud/storage/common/FileTaskType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/cloud/storage/common/FileTaskType;->UPLOAD:Lcn/nubia/cloud/storage/common/FileTaskType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/cloud/storage/common/FileTaskType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcn/nubia/cloud/storage/common/FileTaskType;->$VALUES:[Lcn/nubia/cloud/storage/common/FileTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcn/nubia/cloud/storage/common/FileTaskType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/storage/common/FileTaskType;
    .locals 5

    .line 18
    invoke-static {}, Lcn/nubia/cloud/storage/common/FileTaskType;->values()[Lcn/nubia/cloud/storage/common/FileTaskType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget v4, v3, Lcn/nubia/cloud/storage/common/FileTaskType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown task type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/FileTaskType;
    .locals 1

    .line 3
    const-class v0, Lcn/nubia/cloud/storage/common/FileTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/storage/common/FileTaskType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/storage/common/FileTaskType;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/cloud/storage/common/FileTaskType;->$VALUES:[Lcn/nubia/cloud/storage/common/FileTaskType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/storage/common/FileTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/storage/common/FileTaskType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 14
    iget v0, p0, Lcn/nubia/cloud/storage/common/FileTaskType;->mValue:I

    return v0
.end method
