.class public Lcn/nubia/ex/chips/RecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientAlternatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;
    }
.end annotation


# static fields
.field static final MAX_LOOKUPS:I = 0x32

.field public static final QUERY_TYPE_EMAIL:I = 0x0

.field public static final QUERY_TYPE_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecipAlternates"


# instance fields
.field private mCheckedItemChangedListener:Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

.field private mCheckedItemPosition:I

.field private final mCurrentId:J

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mQuery:Lcn/nubia/ex/chips/Queries$Query;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJIILcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "currentId"    # J
    .param p6, "viewId"    # I
    .param p7, "queryMode"    # I
    .param p8, "listener"    # Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .prologue
    .line 142
    invoke-static {p1, p2, p3, p7}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 144
    iput-wide p4, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    .line 145
    iput-object p8, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .line 147
    if-nez p7, :cond_0

    .line 148
    sget-object v0, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 150
    sget-object v0, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    .line 153
    const-string v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JJILcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "currentId"    # J
    .param p6, "viewId"    # I
    .param p7, "listener"    # Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .prologue
    .line 137
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJIILcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    .line 138
    return-void
.end method

.method private static getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "queryType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 159
    if-nez p3, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    .line 161
    invoke-virtual {v1}, Lcn/nubia/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    .line 162
    invoke-virtual {v2}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    .line 163
    invoke-virtual {v4}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    .line 164
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-static {v6}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 167
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    .line 168
    invoke-virtual {v1}, Lcn/nubia/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    .line 169
    invoke-virtual {v2}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    .line 170
    invoke-virtual {v4}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    .line 171
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 167
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "inAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/HashMap;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "addressType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "inAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 77
    sget-object v22, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    .line 81
    .local v22, "query":Lcn/nubia/ex/chips/Queries$Query;
    :goto_0
    const/16 v2, 0x32

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 82
    .local v18, "addressesSize":I
    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 83
    .local v6, "addresses":[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v19, "bindString":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 86
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v24

    .line 87
    .local v24, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v24

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v6, v21

    .line 88
    const-string v2, "?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_0

    .line 90
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 79
    .end local v6    # "addresses":[Ljava/lang/String;
    .end local v18    # "addressesSize":I
    .end local v19    # "bindString":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .end local v22    # "query":Lcn/nubia/ex/chips/Queries$Query;
    .end local v24    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    sget-object v22, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    .restart local v22    # "query":Lcn/nubia/ex/chips/Queries$Query;
    goto :goto_0

    .line 87
    .restart local v6    # "addresses":[Ljava/lang/String;
    .restart local v18    # "addressesSize":I
    .restart local v19    # "bindString":Ljava/lang/StringBuilder;
    .restart local v21    # "i":I
    .restart local v24    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 94
    .end local v24    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Doing reverse lookup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v23, "recipientEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/ex/chips/RecipientEntry;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 100
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 101
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 99
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 105
    .local v20, "c":Landroid/database/Cursor;
    if-eqz v20, :cond_8

    .line 107
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "address":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x7

    .line 112
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x1

    .line 113
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x2

    .line 114
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x3

    .line 115
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x4

    .line 116
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x5

    .line 117
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x6

    .line 118
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 110
    invoke-static/range {v7 .. v16}, Lcn/nubia/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received reverse look up information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RESULTS:  NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    .line 122
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CONTACT ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 123
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADDRESS :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 124
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 129
    .end local v17    # "address":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_8
    return-object v23

    .line 129
    :catchall_0
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 130
    throw v2
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcn/nubia/calendarcommon/R$layout;->chips_recipient_dropdown_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .param p0, "original"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 190
    new-instance v2, Landroid/database/MatrixCursor;

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 192
    .local v2, "result":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v1, "destinationsSeen":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "destination":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 204
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 205
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 206
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    .line 207
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x5

    const/4 v5, 0x5

    .line 208
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    .line 209
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    .line 210
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    .end local v0    # "destination":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 261
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 263
    .local v5, "position":I
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    .local v2, "display":Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 265
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v5}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v3

    .line 266
    .local v3, "entry":Lcn/nubia/ex/chips/RecipientEntry;
    if-nez v5, :cond_1

    .line 267
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-virtual {v3}, Lcn/nubia/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 272
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    :goto_0
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    .local v0, "destination":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, "destinationType":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 282
    iget-object v6, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    .line 283
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x3

    .line 284
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 282
    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 284
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void

    .line 274
    .end local v0    # "destination":Landroid/widget/TextView;
    .end local v1    # "destinationType":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 223
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getRecipientEntry(I)Lcn/nubia/ex/chips/RecipientEntry;
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 228
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
    const/4 v1, 0x0

    .line 230
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 231
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 232
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 233
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    .line 234
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 235
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    .line 236
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x6

    .line 237
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 229
    invoke-static/range {v1 .. v10}, Lcn/nubia/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    if-nez p2, :cond_0

    .line 245
    invoke-direct {p0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 247
    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 248
    iput p1, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 249
    iget-object v1, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    iget v2, p0, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    invoke-interface {v1, v2}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;->onCheckedItemChanged(I)V

    .line 253
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 254
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 290
    invoke-direct {p0}, Lcn/nubia/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
