.class Landroid/support/v4/app/RemoteInputCompatJellybean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDataResultToIntent(Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string p0, "android.remoteinput.results"

    invoke-static {p0, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    invoke-static {p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const-string v1, "android.remoteinput.resultsData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, "android.remoteinput.results"

    invoke-static {p0, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 8

    const-string v0, "allowedDataTypes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "resultKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "label"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v0, "choices"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    const-string v0, "allowFreeFormInput"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-interface {p1, v0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "text/vnd.android.intent"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.remoteinput.results"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/app/RemoteInputCompatJellybean;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.remoteinput.resultsData"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method static toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resultKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "choices"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    const-string v2, "allowFreeFormInput"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "allowedDataTypes"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method static toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
