.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAllowMobileNetwork:Z

.field public mAppName:Ljava/lang/String;

.field public mDownLoadStorageLimit:J

.field public mDownloadPath:Ljava/lang/String;

.field public mIconId:I

.field public mNotificationContent:Ljava/lang/String;

.field public mNotificationTitle:Ljava/lang/String;

.field public mNotificationUpdateOffset:J

.field public mPackageName:Ljava/lang/String;

.field public mShowNotification:Z

.field public mSlientDownload:Z

.field public mSlientInstall:Z

.field public mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 65
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 76
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-void
.end method

.method public static getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 4
    .param p0, "builder"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .prologue
    .line 174
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>()V

    .line 175
    .local v0, "configuration":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 176
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$102(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 177
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$202(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 178
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$302(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$402(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;I)I

    .line 180
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$502(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 181
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$602(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$702(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-wide v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    invoke-static {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$802(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J

    .line 184
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$902(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-wide v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    invoke-static {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$1002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J

    .line 186
    return-object v0
.end method


# virtual methods
.method public setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 126
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 120
    iput p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 121
    return-object p0
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "notificationContent"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1
    .param p1, "timeOffset"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    .line 154
    return-object p0
.end method

.method public setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "showNotification"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 92
    return-object p0
.end method

.method public setSlientDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "slientDownload"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 105
    return-object p0
.end method

.method public setSlientInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "slientInstall"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 81
    return-object p0
.end method

.method public setStorageLimit(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1
    .param p1, "limitSize"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 170
    return-object p0
.end method
