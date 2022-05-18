.class public Lcn/nubia/cloud/storage/common/provider/CloudStoreContract;
.super Ljava/lang/Object;
.source "CloudStoreContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/provider/CloudStoreContract$TaskInfoColumns;,
        Lcn/nubia/cloud/storage/common/provider/CloudStoreContract$ExifColumns;,
        Lcn/nubia/cloud/storage/common/provider/CloudStoreContract$FileColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.cloud.storage"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://cn.nubia.cloud.storage"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/CloudStoreContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
