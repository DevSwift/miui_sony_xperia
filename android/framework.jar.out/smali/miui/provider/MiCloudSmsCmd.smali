.class public Lmiui/provider/MiCloudSmsCmd;
.super Ljava/lang/Object;
.source "MiCloudSmsCmd.java"


# static fields
.field private static final CMD_INDEX:I = 0x1

.field private static final MSG_ID_INDEX:I = 0x2

.field private static final SMS_CMD_HEADER:Ljava/lang/String; = "mfc,"

.field private static final SMS_CMD_TAIL:Ljava/lang/String; = "##"

.field private static final TIME_INDEX:I = 0x3

.field public static final TYPE_LOCATION:Ljava/lang/String; = "l"

.field public static final TYPE_LOCK:Ljava/lang/String; = "k"

.field public static final TYPE_NOISE:Ljava/lang/String; = "n"

.field public static final TYPE_WIPE:Ljava/lang/String; = "w"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "mfc,"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "##"

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, params:[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v9, v7

    if-lt v9, v11, :cond_0

    .line 45
    aget-object v3, v7, v8

    .line 46
    .local v3, cmd:Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v1, v7, v9

    .line 47
    .local v1, msgId:Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v2, v7, v9

    .line 49
    .local v2, time:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, pwd:Ljava/lang/String;
    const/4 v5, 0x0

    .line 50
    .local v5, digest:Ljava/lang/String;
    const-string v9, "k"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    aget-object v4, v7, v10

    .line 52
    aget-object v5, v7, v11

    .line 56
    :goto_1
    const-string v9, "##"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 57
    .local v6, index:I
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 59
    invoke-static/range {v0 .. v5}, Lmiui/provider/MiCloudSmsCmd;->sendCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 60
    goto :goto_0

    .line 54
    .end local v6           #index:I
    :cond_2
    aget-object v5, v7, v10

    goto :goto_1
.end method

.method private static sendCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "msgId"
    .parameter "time"
    .parameter "cmd"
    .parameter "pwd"
    .parameter "digest"

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.device_msgId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "android.intent.extra.device_time"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "android.intent.extra.device_digest"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "android.intent.extra.device_cmd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "android.intent.extra.lock_password"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v2, "l"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string/jumbo v0, "miui.intent.action.REQUEST_LOCATION"

    .line 82
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    :cond_1
    return-void

    .line 74
    :cond_2
    const-string/jumbo v2, "n"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const-string/jumbo v0, "miui.intent.action.NOISE"

    goto :goto_0

    .line 76
    :cond_3
    const-string v2, "k"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    const-string/jumbo v0, "miui.intent.action.LOCK_DEVICE"

    goto :goto_0

    .line 78
    :cond_4
    const-string/jumbo v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v0, "miui.intent.action.WIPE_DATA"

    goto :goto_0
.end method
