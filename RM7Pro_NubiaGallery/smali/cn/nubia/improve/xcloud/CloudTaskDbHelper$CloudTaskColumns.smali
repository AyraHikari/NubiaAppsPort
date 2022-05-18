.class public Lcn/nubia/improve/xcloud/CloudTaskDbHelper$CloudTaskColumns;
.super Ljava/lang/Object;
.source "CloudTaskDbHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/CloudTaskDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudTaskColumns"
.end annotation


# static fields
.field public static final CLOUD_PATH:Ljava/lang/String; = "cloudpath"

.field public static final CURRENT_SIZE:Ljava/lang/String; = "currentsize"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DONE_TIME:Ljava/lang/String; = "donetime"

.field public static final FOLDER_NAME:Ljava/lang/String; = "foldername"

.field public static final LOCAL_PATH:Ljava/lang/String; = "localpath"

.field public static final RATE:Ljava/lang/String; = "rate"

.field public static final SERVER_ID:Ljava/lang/String; = "serverid"

.field public static final SOURCE_TYPE:Ljava/lang/String; = "sourcetype"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TABLE_NAME:Ljava/lang/String; = "cloudtask"

.field public static final TASK_ID:Ljava/lang/String; = "taskid"

.field public static final TASK_TYPE:Ljava/lang/String; = "tasktype"

.field public static final TOTAL_SIZE:Ljava/lang/String; = "totalsize"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
