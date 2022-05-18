.class final Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry$1;
.super Ljava/lang/Object;
.source "BackupEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    invoke-direct {v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;-><init>()V

    .line 78
    .local v0, "info":Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->access$002(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->access$102(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->access$202(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->access$302(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;I)I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->access$402(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;I)I

    .line 83
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 72
    new-array v0, p1, [Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry$1;->newArray(I)[Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    move-result-object v0

    return-object v0
.end method
