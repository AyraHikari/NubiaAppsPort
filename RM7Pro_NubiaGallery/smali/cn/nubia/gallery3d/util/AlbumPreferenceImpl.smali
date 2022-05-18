.class public Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;
.super Ljava/lang/Object;
.source "AlbumPreferenceImpl.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/AlbumPreference;


# static fields
.field private static final KEY_BUCKET_ID:Ljava/lang/String; = "bucket-id"

.field private static final KEY_SETUP_DEFAULT:Ljava/lang/String; = "setup-default"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "AlbumPreference"


# instance fields
.field private preferbucketIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryClause:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AlbumPreference"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "bucket-id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->putDefaultPreference(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->updateClause()V

    return-void
.end method

.method private putDefaultPreference(Landroid/content/Context;)V
    .locals 6

    .line 88
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "setup-default"

    const/4 v1, 0x0

    .line 89
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->DEFAULT_PREFERENCE_BUCKET_IDS:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 91
    iget-object v5, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    const-string v3, "bucket-id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateClause()V
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->queryClause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->queryClause:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;)Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    const-string v1, "bucket-id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->updateClause()V

    const/4 p1, 0x1

    return p1
.end method

.method public put(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    const-string v1, "bucket-id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->updateClause()V

    const/4 p1, 0x1

    return p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    const-string v1, "bucket-id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->updateClause()V

    const/4 p1, 0x1

    return p1
.end method

.method public remove(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->preferbucketIds:Ljava/util/Set;

    const-string v1, "bucket-id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;->updateClause()V

    const/4 p1, 0x1

    return p1
.end method
