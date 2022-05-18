.class public Lcn/nubia/calendar/util/PermissionList;
.super Ljava/lang/Object;
.source "PermissionList.java"


# static fields
.field private static final per:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/util/PermissionList;->per:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcn/nubia/calendar/util/PermissionList;->per:[Ljava/lang/String;

    return-object v0
.end method
