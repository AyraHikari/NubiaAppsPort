.class Lcn/nubia/commonui/v7/preference/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackages:[Ljava/lang/String;

.field private mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/v7/preference/PreferenceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p2}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->init(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V

    .line 61
    return-void
.end method

.method private createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v8, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 217
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v3, :cond_2

    .line 220
    :try_start_0
    iget-object v8, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 221
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 222
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_3

    .line 223
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 244
    :cond_1
    sget-object v8, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 245
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 246
    sget-object v8, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 250
    .local v0, "args":[Ljava/lang/Object;
    const/4 v8, 0x1

    aput-object p3, v0, v8

    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/commonui/v7/preference/Preference;

    return-object v8

    .line 225
    .end local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v6, 0x0

    .line 226
    .local v6, "notFoundException":Ljava/lang/ClassNotFoundException;
    array-length v9, p2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v7, p2, v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    .local v7, "prefix":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 234
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_1

    .line 235
    if-nez v6, :cond_5

    .line 236
    :try_start_2
    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": Error inflating class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "notFoundException":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v4

    .line 255
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    throw v4

    .line 230
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "notFoundException":Ljava/lang/ClassNotFoundException;
    .restart local v7    # "prefix":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 231
    .restart local v4    # "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v4

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "notFoundException":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, "ie":Landroid/view/InflateException;
    invoke-virtual {v5, v4}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v5
.end method

.method private createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 284
    const/4 v3, -0x1

    const/16 v4, 0x2e

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    .line 290
    .local v2, "item":Lcn/nubia/commonui/v7/preference/Preference;
    :goto_0
    return-object v2

    .line 287
    .end local v2    # "item":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p2}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .restart local v2    # "item":Lcn/nubia/commonui/v7/preference/Preference;
    goto :goto_0

    .line 292
    .end local v2    # "item":Lcn/nubia/commonui/v7/preference/Preference;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 295
    .end local v0    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class (not found)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 300
    throw v1

    .line 302
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 307
    throw v1
.end method

.method private init(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V
    .locals 3
    .param p1, "preferenceManager"    # Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn.nubia.commonui.v14.preference."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.nubia.commonui.v7.preference."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private onMergeRoots(Lcn/nubia/commonui/v7/preference/PreferenceGroup;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    .param p2, "xmlRoot"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V

    .line 190
    .end local p2    # "xmlRoot":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    :goto_0
    return-object p2

    .restart local p2    # "xmlRoot":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    :cond_0
    move-object p2, p1

    goto :goto_0
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcn/nubia/commonui/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 320
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_4

    :cond_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 323
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 327
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "name":Ljava/lang/String;
    const-string v7, "intent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 341
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p2, v3}, Lcn/nubia/commonui/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Error parsing preference"

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 338
    throw v2

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const-string v7, "extra"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "extra"

    .line 344
    invoke-virtual {p2}, Lcn/nubia/commonui/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 343
    invoke-virtual {v7, v8, p3, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 346
    :try_start_1
    invoke-static {p1}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 347
    :catch_1
    move-exception v1

    .line 348
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Error parsing preference"

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 351
    throw v2

    .line 354
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    invoke-direct {p0, v5, p3}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v4

    .local v4, "item":Lcn/nubia/commonui/v7/preference/Preference;
    move-object v7, p2

    .line 355
    check-cast v7, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->addItemFromInflater(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 356
    invoke-direct {p0, p1, v4, p3}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcn/nubia/commonui/v7/preference/Preference;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 360
    .end local v4    # "item":Lcn/nubia/commonui/v7/preference/Preference;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 367
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 368
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 369
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 370
    :cond_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public inflate(ILcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 2
    .param p1, "resource"    # I
    .param p2, "root"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 112
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/Preference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 114
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .prologue
    const/4 v10, 0x2

    .line 138
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v7

    .line 139
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 140
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v6, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v9, v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 148
    .local v4, "type":I
    if-eq v4, v10, :cond_1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 150
    :cond_1
    if-eq v4, v10, :cond_2

    .line 151
    new-instance v6, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": No start tag found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1

    .line 179
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 156
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v5

    .line 159
    .local v5, "xmlRoot":Lcn/nubia/commonui/v7/preference/Preference;
    check-cast v5, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .end local v5    # "xmlRoot":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-direct {p0, p2, v5}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->onMergeRoots(Lcn/nubia/commonui/v7/preference/PreferenceGroup;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    move-result-object v3

    .line 162
    .local v3, "result":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-direct {p0, p1, v3, v0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Lcn/nubia/commonui/v7/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    monitor-exit v7

    return-object v3

    .line 166
    .end local v3    # "result":Lcn/nubia/commonui/v7/preference/Preference;
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    throw v2

    .line 170
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 173
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPackages([Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # [Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    .line 78
    return-void
.end method
