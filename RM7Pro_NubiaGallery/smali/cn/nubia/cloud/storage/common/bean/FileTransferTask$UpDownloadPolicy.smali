.class public final enum Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;
.super Ljava/lang/Enum;
.source "FileTransferTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpDownloadPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

.field public static final enum OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

.field public static final enum OVERWRITE:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

.field public static final enum RENAME:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 272
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    const-string v1, "OVERWRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OVERWRITE:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 273
    new-instance v1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    const-string v3, "RENAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->RENAME:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 274
    new-instance v3, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 271
    sput-object v5, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->$VALUES:[Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 279
    iput p3, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;
    .locals 5

    .line 287
    invoke-static {}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->values()[Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 288
    iget v4, v3, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;
    .locals 1

    .line 271
    const-class v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;
    .locals 1

    .line 271
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->$VALUES:[Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-virtual {v0}, [Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 283
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->mValue:I

    return v0
.end method
