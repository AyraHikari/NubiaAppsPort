.class public Lcn/nubia/notepad/utils/ContactInfos;
.super Ljava/lang/Object;
.source "ContactInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/utils/ContactInfos$Contact;
    }
.end annotation


# static fields
.field private static mContactInfos:Lcn/nubia/notepad/utils/ContactInfos;


# instance fields
.field private final CONTACT_ID_COLUMN:I

.field private final INSERT_CONTACT_CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private final PHONE_NUMBER_COLUMN:I

.field private mContacts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcn/nubia/notepad/utils/ContactInfos$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mCurContactId:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcn/nubia/notepad/utils/ContactInfos;->PHONE_NUMBER_COLUMN:I

    .line 30
    iput v3, p0, Lcn/nubia/notepad/utils/ContactInfos;->CONTACT_ID_COLUMN:I

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->INSERT_CONTACT_CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    .line 39
    return-void
.end method

.method private getContact(J)Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/nubia/notepad/utils/ContactInfos$Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/notepad/utils/ContactInfos$Contact;-><init>(Lcn/nubia/notepad/utils/ContactInfos;Lcn/nubia/notepad/utils/ContactInfos$1;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/notepad/utils/ContactInfos;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcn/nubia/notepad/utils/ContactInfos;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/notepad/utils/ContactInfos;->mContactInfos:Lcn/nubia/notepad/utils/ContactInfos;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcn/nubia/notepad/utils/ContactInfos;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContactInfos;-><init>()V

    sput-object v0, Lcn/nubia/notepad/utils/ContactInfos;->mContactInfos:Lcn/nubia/notepad/utils/ContactInfos;

    .line 45
    :cond_0
    sget-object v0, Lcn/nubia/notepad/utils/ContactInfos;->mContactInfos:Lcn/nubia/notepad/utils/ContactInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearContacts()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 155
    :cond_0
    return-void
.end method

.method public getContactInfos(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iget-object v2, p0, Lcn/nubia/notepad/utils/ContactInfos;->INSERT_CONTACT_CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 50
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 55
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 81
    :cond_0
    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v7, 0x0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 60
    .local v10, "personId":J
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "description":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-direct {p0, v10, v11}, Lcn/nubia/notepad/utils/ContactInfos;->getContact(J)Lcn/nubia/notepad/utils/ContactInfos$Contact;

    move-result-object v6

    .line 65
    .local v6, "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    invoke-static {v6, v10, v11}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$002(Lcn/nubia/notepad/utils/ContactInfos$Contact;J)J

    .line 66
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-static {v6}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$100(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v6    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "personId":J
    :catch_0
    move-exception v9

    .line 79
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v7, 0x0

    goto :goto_0

    .line 68
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "personId":J
    :cond_4
    :try_start_3
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    invoke-static {v6}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$200(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 81
    .end local v6    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "personId":J
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v7, 0x0

    .line 85
    :cond_5
    throw v0

    .line 71
    .restart local v6    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "personId":J
    :cond_6
    :try_start_4
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-static {v6}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$300(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 81
    .end local v6    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "personId":J
    :cond_7
    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getCurContactId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    return-wide v0
.end method

.method public isEmailExistInDataBase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "isExist":Z
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .line 99
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    .line 110
    .end local v2    # "isExist":Z
    .local v3, "isExist":I
    :goto_0
    return v3

    .line 102
    .end local v3    # "isExist":I
    .restart local v2    # "isExist":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 103
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .line 104
    .local v0, "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$200(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$000(Lcn/nubia/notepad/utils/ContactInfos$Contact;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .end local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_2
    move v3, v2

    .line 110
    .restart local v3    # "isExist":I
    goto :goto_0

    .line 102
    .end local v3    # "isExist":I
    .restart local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isPhoneExistInDataBase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "isExist":Z
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .line 116
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    .line 127
    .end local v2    # "isExist":Z
    .local v3, "isExist":I
    :goto_0
    return v3

    .line 119
    .end local v3    # "isExist":I
    .restart local v2    # "isExist":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 120
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .line 121
    .local v0, "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$300(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$000(Lcn/nubia/notepad/utils/ContactInfos$Contact;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .end local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_2
    move v3, v2

    .line 127
    .restart local v3    # "isExist":I
    goto :goto_0

    .line 119
    .end local v3    # "isExist":I
    .restart local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isWebUrlExistInDataBase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "webUrl"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "isExist":Z
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .line 133
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    .line 144
    .end local v2    # "isExist":Z
    .local v3, "isExist":I
    :goto_0
    return v3

    .line 136
    .end local v3    # "isExist":I
    .restart local v2    # "isExist":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 137
    iget-object v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mContacts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .line 138
    .local v0, "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$100(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    const/4 v2, 0x1

    .line 140
    invoke-static {v0}, Lcn/nubia/notepad/utils/ContactInfos$Contact;->access$000(Lcn/nubia/notepad/utils/ContactInfos$Contact;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/notepad/utils/ContactInfos;->mCurContactId:J

    .end local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_2
    move v3, v2

    .line 144
    .restart local v3    # "isExist":I
    goto :goto_0

    .line 136
    .end local v3    # "isExist":I
    .restart local v0    # "contact":Lcn/nubia/notepad/utils/ContactInfos$Contact;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
