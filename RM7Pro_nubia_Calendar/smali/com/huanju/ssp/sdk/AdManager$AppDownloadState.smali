.class public final enum Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;
.super Ljava/lang/Enum;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppDownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

.field public static final enum APP_DOWNLOAD_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

.field public static final enum APP_INSTALL_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

.field public static final enum APP_SHOW:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

.field public static final enum APP_START_DOWNLOAD:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    const-string v1, "APP_SHOW"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_SHOW:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    .line 80
    new-instance v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    const-string v1, "APP_START_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_START_DOWNLOAD:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    .line 81
    new-instance v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    const-string v1, "APP_DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_DOWNLOAD_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    .line 82
    new-instance v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    const-string v1, "APP_INSTALL_COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_INSTALL_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    sget-object v1, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_SHOW:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_START_DOWNLOAD:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_DOWNLOAD_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_INSTALL_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->$VALUES:[Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->$VALUES:[Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-virtual {v0}, [Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    return-object v0
.end method
