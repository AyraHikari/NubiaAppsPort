.class public Lcn/nubia/notepad/utils/PermissionList;
.super Ljava/lang/Object;
.source "PermissionList.java"


# static fields
.field private static final ContactsAndPhoneState:[Ljava/lang/String;

.field public static final PERMISSION_ALL:Ljava/lang/String; = "all"

.field public static final PERMISSION_CONTACTSANDPHONESTATE:Ljava/lang/String; = "PhoneStateAndContacts"

.field public static final PERMISSION_RECORDRAIDO:Ljava/lang/String; = "RecordRadio"

.field public static final PERMISSION_STORAGE:Ljava/lang/String; = "Storage"

.field private static final RecordRadio:[Ljava/lang/String;

.field private static final Storage:[Ljava/lang/String;

.field private static final all:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/notepad/utils/PermissionList;->Storage:[Ljava/lang/String;

    .line 15
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/notepad/utils/PermissionList;->RecordRadio:[Ljava/lang/String;

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/utils/PermissionList;->ContactsAndPhoneState:[Ljava/lang/String;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/notepad/utils/PermissionList;->all:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 42
    sget-object v0, Lcn/nubia/notepad/utils/PermissionList;->all:[Ljava/lang/String;

    :goto_1
    return-object v0

    .line 33
    :sswitch_0
    const-string v1, "all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Storage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "PhoneStateAndContacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "RecordRadio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 35
    :pswitch_0
    sget-object v0, Lcn/nubia/notepad/utils/PermissionList;->all:[Ljava/lang/String;

    goto :goto_1

    .line 37
    :pswitch_1
    sget-object v0, Lcn/nubia/notepad/utils/PermissionList;->Storage:[Ljava/lang/String;

    goto :goto_1

    .line 39
    :pswitch_2
    sget-object v0, Lcn/nubia/notepad/utils/PermissionList;->ContactsAndPhoneState:[Ljava/lang/String;

    goto :goto_1

    .line 41
    :pswitch_3
    sget-object v0, Lcn/nubia/notepad/utils/PermissionList;->RecordRadio:[Ljava/lang/String;

    goto :goto_1

    .line 33
    :sswitch_data_0
    .sparse-switch
        -0x62474499 -> :sswitch_2
        -0x4ecf95f6 -> :sswitch_3
        -0xd1725a5 -> :sswitch_1
        0x179a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
