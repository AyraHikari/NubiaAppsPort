.class Lcom/android/setting/ZtemtInlineSettingSwitch$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setting/ZtemtInlineSettingSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/ZtemtInlineSettingSwitch;


# direct methods
.method private constructor <init>(Lcom/android/setting/ZtemtInlineSettingSwitch;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/setting/ZtemtInlineSettingSwitch;Lcom/android/setting/ZtemtInlineSettingSwitch$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/setting/ZtemtInlineSettingSwitch$b;-><init>(Lcom/android/setting/ZtemtInlineSettingSwitch;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {p1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {v0}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    .line 91
    invoke-static {p1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {p1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/preference/ListPreference;->a(I)V

    .line 95
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {p1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->b(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/setting/ZtemtInlineSettingSwitch$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {p1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->b(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/setting/ZtemtInlineSettingSwitch$a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;->a:Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-static {p2}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/setting/ZtemtInlineSettingSwitch$a;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
