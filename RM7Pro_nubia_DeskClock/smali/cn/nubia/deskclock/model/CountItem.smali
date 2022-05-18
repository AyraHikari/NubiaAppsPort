.class public Lcn/nubia/deskclock/model/CountItem;
.super Ljava/lang/Object;
.source "CountItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final COUNT_ID:Ljava/lang/String; = "id_"

.field private static final COUNT_VALUSE:Ljava/lang/String; = "cound_seconds"


# instance fields
.field public mChecked:Z

.field public mCountId:I

.field public mSecounds:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "secounds"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/model/CountItem;->mChecked:Z

    .line 16
    iput p2, p0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    .line 17
    iput p1, p0, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/model/CountItem;->mChecked:Z

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cound_seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    .line 35
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 23
    new-instance v0, Lcn/nubia/deskclock/model/CountItem;

    iget v1, p0, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    iget v2, p0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/model/CountItem;-><init>(II)V

    .line 24
    .local v0, "cityobject":Lcn/nubia/deskclock/model/CountItem;
    return-object v0
.end method

.method public saveCountdownToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V
    .locals 4
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "index"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cound_seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count{mSecounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
